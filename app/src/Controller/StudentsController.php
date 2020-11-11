<?php

declare (strict_types = 1);

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class StudentsController extends AbstractController
{
    /**
     * API endpoint for fetching students data
     * @Route("/api/v1/students", name="students", methods={"GET"})
     */
    public function index(): Response
    {
        // Calling procedure
        $sql = "call GETSTUDENTSDATA()";
        $em = $this->getDoctrine()->getManager();
        $stmt = $em->getConnection()->prepare($sql);
        $stmt->execute();
        
        return $this->json($stmt->fetchAll());
    }
}
